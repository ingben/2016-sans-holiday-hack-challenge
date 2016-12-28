.class public Lcom/northpolewonderland/santagram/Me;
.super Landroid/support/v7/a/e;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/RadioButton;

.field k:Landroid/widget/RadioButton;

.field l:Lcom/parse/ParseUser;

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_COVER_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFile;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/northpolewonderland/santagram/Me$15;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$15;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_AVATAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFile;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/northpolewonderland/santagram/Me$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$2;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_ABOUT_ME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_ABOUT_ME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->i:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method b()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    const-string v1, "Loading my Posts..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_CREATED_AT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$3;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$3;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method

.method c()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    const-string v1, "Loading Posts I\'ve liked..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->LIKES_LIKED_BY:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->LIKES_CREATED_AT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$4;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$4;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method

.method d()V
    .locals 3

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$5;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$5;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V

    return-void
.end method

.method e()V
    .locals 3

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me;->l:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$6;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$6;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->setContentView(I)V

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Me;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Me;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "Me"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->b:Landroid/widget/ImageView;

    const v0, 0x7f0d00a4

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->c:Landroid/widget/ImageView;

    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->d:Landroid/widget/Button;

    const v0, 0x7f0d00a8

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->e:Landroid/widget/Button;

    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->f:Landroid/widget/Button;

    const v0, 0x7f0d00a9

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->g:Landroid/widget/Button;

    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->h:Landroid/widget/TextView;

    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->i:Landroid/widget/TextView;

    const v0, 0x7f0d00ac

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->j:Landroid/widget/RadioButton;

    const v0, 0x7f0d00ad

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->k:Landroid/widget/RadioButton;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0d0097

    invoke-virtual {p0, v1}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/northpolewonderland/santagram/Me$9;

    invoke-direct {v2, p0}, Lcom/northpolewonderland/santagram/Me$9;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/northpolewonderland/santagram/Me$10;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/Me$10;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->d:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$11;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$11;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->e:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$12;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$12;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->f:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$13;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$13;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->g:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$14;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$14;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Me;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    const-string v1, "Logging out..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/northpolewonderland/santagram/Me$7;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/Me$7;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-static {v0}, Lcom/parse/ParseUser;->logOutInBackground(Lcom/parse/LogOutCallback;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d00eb
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/a/e;->onStart()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->j:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->j:Landroid/widget/RadioButton;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$1;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->k:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me;->k:Landroid/widget/RadioButton;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$8;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$8;-><init>(Lcom/northpolewonderland/santagram/Me;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Me;->b()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Me;->d()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Me;->a()V

    return-void
.end method
