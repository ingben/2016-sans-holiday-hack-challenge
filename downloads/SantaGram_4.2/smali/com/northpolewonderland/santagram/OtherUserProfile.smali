.class public Lcom/northpolewonderland/santagram/OtherUserProfile;
.super Landroid/support/v7/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/northpolewonderland/santagram/OtherUserProfile$a;
    }
.end annotation


# instance fields
.field currUser:Lcom/parse/ParseUser;

.field followArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field followButt:Landroid/widget/Button;

.field followersArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field followersButt:Landroid/widget/Button;

.field followingArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field followingButt:Landroid/widget/Button;

.field pd:Landroid/app/ProgressDialog;

.field postsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field userObj:Lcom/parse/ParseObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->currUser:Lcom/parse/ParseUser;

    return-void
.end method


# virtual methods
.method checkIfFollowingThisUser()V
    .locals 3

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$10;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$10;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->setContentView(I)V

    invoke-super {p0, v3}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->b(Z)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followersButt:Landroid/widget/Button;

    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followingButt:Landroid/widget/Button;

    const v0, 0x7f0d00a8

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followButt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "objectID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    :try_start_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->showUserDetails()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->queryUserPosts()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->checkIfFollowingThisUser()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->queryFollowers()V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followButt:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$1;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followersButt:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$3;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$3;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followingButt:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$4;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$4;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$a;

    invoke-direct {v1, p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile$a;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;Landroid/widget/ImageView;)V

    new-array v0, v3, [Ljava/lang/String;

    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->finish()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/support/v7/a/d$a;

    invoke-direct {v1, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v3, "Briefly explain us the reason why you\'re reporting this User"

    invoke-virtual {v1, v3}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v3

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v3

    const v4, 0x7f020058

    invoke-virtual {v3, v4}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v3

    const-string v4, "Cancel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/northpolewonderland/santagram/OtherUserProfile$2;

    invoke-direct {v5, p0, v2}, Lcom/northpolewonderland/santagram/OtherUserProfile$2;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    invoke-virtual {v1}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/a/d;->show()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d00ec -> :sswitch_1
    .end sparse-switch
.end method

.method queryFollowers()V
    .locals 3

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$8;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$8;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V

    return-void
.end method

.method queryFollowing()V
    .locals 3

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$9;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$9;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V

    return-void
.end method

.method queryUserPosts()V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Loading Posts..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_IS_REPORTED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_CREATED_AT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$7;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$7;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method

.method showUserDetails()V
    .locals 3

    const v0, 0x7f0d00bc

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_COVER_IMAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/northpolewonderland/santagram/OtherUserProfile$5;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile$5;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_0
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_AVATAR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/northpolewonderland/santagram/OtherUserProfile$6;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile$6;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_1
    const v0, 0x7f0d00be

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_ABOUT_ME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_ABOUT_ME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
