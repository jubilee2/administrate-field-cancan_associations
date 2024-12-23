# Administrate::Field::CancanAssociations

## Overview
Administrate Field CanCan Associations is a gem that integrates CanCan associations with Administrate fields. It provides a flexible way to manage associations between models while enforcing access control rules.

## Installation

Add this line to your application's Gemfile:
```Ruby
gem 'administrate-field-cancan_associations', github: 'jubilee2/administrate-field-cancan_associations', branch: 'main'
```
Then, run:
```Bash
bundle install
```

## Usage
To use this gem, create a new field in your Administrate dashboard:
```Ruby
class MyResourceDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    my_association: Field::CancanAssociations
  }.freeze
end
```

## Development

After checking out the repo, run:
```Bash
bin/setup
```
Then, run:
```Bash
rake spec
```
To install this gem onto your local machine, run:
```Bash
bundle exec rake install
```

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/jubilee2/administrate-field-cancan_associations):

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Administrate::Field::CancanAssociations project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jubilee2/administrate-field-cancan_associations/blob/master/CODE_OF_CONDUCT.md).
