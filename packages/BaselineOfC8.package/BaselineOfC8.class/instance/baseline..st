baselines
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'C8-Chip' with: [ spec requires: #('C8-Exceptions' 'C8-Devices') ];
                package: 'C8-Tools' with: [ spec requires: #('C8-Exceptions') ];
                package: 'C8-SAR' with: [ spec requires: #('Base' 'IDE') ];
                package: 'C8-IDE' with: [ spec requires: #('C8-Tools') ];
                package: 'C8-Exceptions';
                package: 'C8-Devices' with: [ spec requires: #('C8-Exceptions') ];
                package: 'C8-Tests' with: [ spec requires: #('Base' 'IDE') ].
            spec
                group: 'Base' with: #('C8-Chip' 'C8-Tools' 'C8-SAR' 'C8-Devices');
                group: 'IDE' with: #('C8-IDE');
                group: 'Tests' with: #('default' 'C8-Tests');
                group: 'default' with: #('Base' 'IDE');
                group: 'SAR' with: #('S8-SAR');
                group: 'TravisCI' with: #('Tests')]