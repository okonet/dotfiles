/*eslint no-unused-expressions: 0*/

import _ from 'lodash';
import React from 'react/addons';
import TestUtils from 'react/lib/ReactTestUtils';
import ${NAME} from '../${NAME}';

const R$ = require('rquery')(_, React);

describe('${NAME}', () => {

    it('should be defined', () => {
        let Component = R$(TestUtils.renderIntoDocument(
            <${NAME} />
        ));
        Component[0].should.not.be.undefined;
    });

});
