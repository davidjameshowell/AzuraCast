<template>
    <b-tab :title="langTitle">
        <b-form-group>
            <b-row>
                <b-wrapped-form-group class="col-md-12" id="edit_form_playlists" :field="form.playlists">
                    <template #label>{{ langTitle }}</template>
                    <template #default="props">
                        <b-form-checkbox-group
                            :id="props.id"
                            v-model="props.field.$model"
                            :options="options"
                            stacked
                        ></b-form-checkbox-group>
                    </template>
                </b-wrapped-form-group>
            </b-row>
        </b-form-group>
    </b-tab>
</template>

<script>
import _ from 'lodash';
import BWrappedFormGroup from "../../../Form/BWrappedFormGroup";

export default {
    name: 'MediaFormPlaylists',
    components: {BWrappedFormGroup},
    props: {
        form: Object,
        playlists: Array
    },
    computed: {
        langTitle() {
            return this.$gettext('Playlists');
        },
        options() {
            return _.map(this.playlists, function (row) {
                return {
                    text: row.name,
                    value: row.id
                };
            });
        }
    }
};
</script>
