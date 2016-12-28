.class public Lcom/northpolewonderland/santagram/Home;
.super Landroid/support/v7/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/northpolewonderland/santagram/Home$b;
    }
.end annotation


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/parse/ParseUser;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Home;->d:Lcom/parse/ParseUser;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home;->a:Landroid/app/ProgressDialog;

    const-string v1, "Loading Posts..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Home;->b:Ljava/util/List;

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Home;->d:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/Home$3;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Home$3;-><init>(Lcom/northpolewonderland/santagram/Home;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method

.method b()V
    .locals 3

    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/northpolewonderland/santagram/Home$a;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Home;->b:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/northpolewonderland/santagram/Home$a;-><init>(Lcom/northpolewonderland/santagram/Home;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/northpolewonderland/santagram/Home$4;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Home$4;-><init>(Lcom/northpolewonderland/santagram/Home;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v2, 0x7f070018

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Home;->setContentView(I)V

    invoke-super {p0, v4}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Home;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(I)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Home;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0d0098

    invoke-virtual {p0, v1}, Lcom/northpolewonderland/santagram/Home;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/northpolewonderland/santagram/Home$1;

    invoke-direct {v2, p0}, Lcom/northpolewonderland/santagram/Home$1;-><init>(Lcom/northpolewonderland/santagram/Home;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/northpolewonderland/santagram/Home$2;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/Home$2;-><init>(Lcom/northpolewonderland/santagram/Home;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home;->d:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Home;->a()V

    :cond_0
    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/northpolewonderland/santagram/Home$b;

    invoke-direct {v1, p0, v0}, Lcom/northpolewonderland/santagram/Home$b;-><init>(Lcom/northpolewonderland/santagram/Home;Landroid/widget/ImageView;)V

    new-array v0, v4, [Ljava/lang/String;

    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/northpolewonderland/santagram/Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/Home$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Home;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Home;->a()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00ea
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/a/e;->onStart()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home;->d:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/northpolewonderland/santagram/Login;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Home;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
