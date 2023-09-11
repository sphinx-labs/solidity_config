import { UserSphinxConfig } from '@sphinx-labs/core'

const config: UserSphinxConfig = {
  projectName: 'MyProject',
  contracts: {
    MyFirstContract: {
      contract: 'HelloSphinx',
      kind: 'immutable',
      constructorArgs: {
        _myNumber: 1,
        _myAddress: '{{ MyFirstContract }}',
      },
    },
    MySecondContract: {
      contract: 'HelloSphinx',
      kind: 'immutable',
      constructorArgs: {
        _myNumber: 2,
        _myAddress: '{{ MySecondContract }}',
      },
    },
  },
}

export default config
