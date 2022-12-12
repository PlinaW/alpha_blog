= BBCCrryypptt::::PPaasssswwoorrdd  <<  SSttrriinngg

(from gem bcrypt-3.1.18)
------------------------------------------------------------------------
A password management class which allows you to safely store users'
passwords and compare them.

Example usage:

  include BCrypt

  # hash a user's password
  @password = Password.create("my grand secret")
  @password #=> "$2a$12$C5.FIvVDS9W4AYZ/Ib37YuWd/7ozp1UaMhU28UKrfSxp2oDchbi3K"

  # store it safely
  @user.update_attribute(:password, @password)

  # read it back
  @user.reload!
  @db_password = Password.new(@user.password)

  # compare it after retrieval
  @db_password == "my grand secret" #=> true
  @db_password == "a paltry guess"  #=> false
------------------------------------------------------------------------
= CCllaassss  mmeetthhooddss::

  create, new, valid_hash?

= IInnssttaannccee  mmeetthhooddss::

  ==, checksum, cost, is_password?, salt, split_hash, valid_hash?,
  version

= AAttttrriibbuutteess::

  attr_reader checksum, attr_reader cost, attr_reader salt, attr_reader
  version

