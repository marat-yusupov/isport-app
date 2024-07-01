class MockUserModel {
  MockUserModel(
      {this.fullName = 'Ivan Ivanov',
      this.nick = '@vanya.ivanov',
      this.avatarLink =
          'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745',
      this.rang = 'Athlete'});

  MockUserModel.custom(this.fullName, this.nick, this.avatarLink, this.rang);

  String fullName;
  String nick;
  String avatarLink;
  String rang;
}
