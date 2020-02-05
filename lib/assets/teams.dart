class TeamsData {
  List<Team> teams;

  TeamsData({this.teams});

  TeamsData.fromJson(Map<String, dynamic> json) {
    if (json['teams'] != null) {
      teams = new List<Team>();
      json['teams'].forEach((v) {
        teams.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.teams != null) {
      data['teams'] = this.teams.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String name;
  String desc;
  String job;
  String image;
  String speciality;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String contribution;

  Team(
      {this.name,
      this.desc,
      this.job,
      this.image,
      this.speciality,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.contribution});

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    job = json['job'];
    image = json['image'];
    speciality = json['speciality'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['job'] = this.job;
    data['image'] = this.image;
    data['speciality'] = this.speciality;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['contribution'] = this.contribution;
    return data;
  }
}

List<Team> teams = [
  Team(
    name: "Olamide Kehinde",
    desc: "Organizer",
    contribution: "Software Engineer",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/ola.jpg",
    fbUrl: "https://facebook.com/kelvin.kehinde",
    githubUrl: "https://github.com/olakehinde",
    linkedinUrl: "https://linkedin.com/in/olakehinde",
    twitterUrl: "https://twitter.com/olakehinde_",
  ),
  Team(
    name: "Davis Omokaro",
    desc: "Co-Organizer",
    contribution: "Software Engineer",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/davis.jpg",
    fbUrl: "https://m.facebook.com/mickeysplufic",
    githubUrl: "https://github.com/K3beros",
    linkedinUrl: "https://www.linkedin.com/in/davis-omokaro",
    twitterUrl: "https://mobile.twitter.com/Dave_scr1pt",
  ),
  Team(
    name: "Judith Oiku",
    desc: "Co-Organizer",
    contribution: "Software Engineer / WTM Lead Ikorodu",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/judith.jpg",
    githubUrl: "https://github.com/ojudith",
    linkedinUrl: "https://www.linkedin.com/in/oiku-judith-o-ba5307159",
    twitterUrl: " https://mobile.twitter.com/OseJudith",
  ),
  Team(
    name: "Ajadi Abiola",
    desc: "Co-Organizer",
    contribution:
        "Software Developer & Product Manager / WTM Ambassador Ikorodu",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/abiola.jpg",
    githubUrl: "https://github.com/Ajadi-Abiola",
    twitterUrl: "https://twitter.com/ajadiabeeola",
  ),
  Team(
    name: "Benjamin Ajewole",
    desc: "Co-Organizer",
    contribution: "Software Engineer",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/ben.jpg",
    fbUrl: "https://web.facebook.com/profile.php?id=100013411180871",
    githubUrl: "https://github.com/Rexben001",
    linkedinUrl: "https://www.linkedin.com/in/rexben/",
    twitterUrl: "https://twitter.com/rexben001",
  ),
  Team(
    name: "Samuel Abada",
    desc: "Organizer",
    contribution: "Random Niggur",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/samuel.jpg",
    fbUrl: "https://web.facebook.com/abada.samueloghenero",
    githubUrl: "https://github.com/mastersam07",
    linkedinUrl: "https://www.linkedin.com/in/abada-samuel/",
    twitterUrl: "https://twitter.com/mastersam_",
  ),
  Team(
    name: "Luqman Oluwatosin",
    desc: "Organizer",
    contribution: "Software Developer",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/luqman.jpg",
    fbUrl: "https://web.facebook.com/oluwatosin.olamilekan",
    githubUrl: "https://github.com/oluwatosinolamilekan",
    linkedinUrl: "https://www.linkedin.com/in/olamilekan-lamidi-285877131/",
    twitterUrl: "https://twitter.com/iamlakedev",
  ),
  Team(
    name: "Ejiro Onose",
    desc: "Organizer",
    contribution: "AI/ML Developer",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/avatar.png",
    fbUrl: "https://facebook.com/kelvin.kehinde",
    githubUrl: "https://github.com/olakehinde",
    linkedinUrl: "https://linkedin.com/in/olakehinde",
    twitterUrl: "https://twitter.com/olakehinde_",
  ),
  Team(
    name: "Dotun",
    desc: "Organizer",
    contribution: "UI/UX Designer",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/avatar.png",
    fbUrl: "https://www.facebook.com/aboabaoladotun",
    githubUrl: "https://github.com/derahn",
    linkedinUrl: "https://www.linkedin.com/in/aboaba-oladotun",
    twitterUrl: "https://twitter.com/derahn?s=09",
  ),
  Team(
    name: "Mishael Kama",
    desc: "Organizer",
    contribution: "Software Engineer",
    image:
        "https://raw.githubusercontent.com/K3beros/aura/master/src/assets/img/team/avatar.png",
    fbUrl: "https://facebook.com/kelvin.kehinde",
    githubUrl: "https://github.com/olakehinde",
    linkedinUrl: "https://linkedin.com/in/olakehinde",
    twitterUrl: "https://twitter.com/olakehinde_",
  ),
];
