.class public Lcom/northpolewonderland/santagram/ActivityScreen;
.super Landroid/support/v7/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/northpolewonderland/santagram/ActivityScreen$a;
    }
.end annotation


# instance fields
.field activityArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field currUser:Lcom/parse/ParseUser;

.field pd:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/ActivityScreen;->currUser:Lcom/parse/ParseUser;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/ActivityScreen;->setContentView(I)V

    invoke-super {p0, v2}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/ActivityScreen;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/ActivityScreen;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->b(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/ActivityScreen;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "Activity"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/ActivityScreen;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/ActivityScreen;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/ActivityScreen;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/ActivityScreen;->showActivity()V

    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/ActivityScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/northpolewonderland/santagram/ActivityScreen$a;

    invoke-direct {v1, p0, v0}, Lcom/northpolewonderland/santagram/ActivityScreen$a;-><init>(Lcom/northpolewonderland/santagram/ActivityScreen;Landroid/widget/ImageView;)V

    new-array v0, v2, [Ljava/lang/String;

    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/northpolewonderland/santagram/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/ActivityScreen$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
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
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/ActivityScreen;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method showActivity()V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/ActivityScreen;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Loading Activities..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/ActivityScreen;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CURRENT_USER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/ActivityScreen;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/ActivityScreen$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/ActivityScreen$1;-><init>(Lcom/northpolewonderland/santagram/ActivityScreen;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method
