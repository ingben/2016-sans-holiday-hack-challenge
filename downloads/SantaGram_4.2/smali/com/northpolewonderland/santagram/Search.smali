.class public Lcom/northpolewonderland/santagram/Search;
.super Landroid/support/v7/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/northpolewonderland/santagram/Search$a;
    }
.end annotation


# instance fields
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

.field searchTxt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public dismisskeyboard()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Search;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Search;->searchTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Search;->searchTxt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Search;->setContentView(I)V

    invoke-super {p0, v4}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Search;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Search;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "Popular"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Search;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Search;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Search;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Search;->searchTxt:Landroid/widget/EditText;

    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0d0098

    invoke-virtual {p0, v1}, Lcom/northpolewonderland/santagram/Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/northpolewonderland/santagram/Search$1;

    invoke-direct {v2, p0}, Lcom/northpolewonderland/santagram/Search$1;-><init>(Lcom/northpolewonderland/santagram/Search;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/northpolewonderland/santagram/Search$2;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/Search$2;-><init>(Lcom/northpolewonderland/santagram/Search;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Search;->searchTxt:Landroid/widget/EditText;

    new-instance v1, Lcom/northpolewonderland/santagram/Search$3;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Search$3;-><init>(Lcom/northpolewonderland/santagram/Search;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Search;->queryPosts(Ljava/util/ArrayList;)V

    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Search;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/northpolewonderland/santagram/Search$a;

    invoke-direct {v1, p0, v0}, Lcom/northpolewonderland/santagram/Search$a;-><init>(Lcom/northpolewonderland/santagram/Search;Landroid/widget/ImageView;)V

    new-array v0, v4, [Ljava/lang/String;

    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/northpolewonderland/santagram/Search;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/Search$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Search;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

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
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Search;->queryPosts(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d00ed
        :pswitch_0
    .end packed-switch
.end method

.method queryPosts(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Search;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Search;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Search;->dismisskeyboard()V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_KEYWORDS:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Search;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v1

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_IS_REPORTED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/Search$4;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Search$4;-><init>(Lcom/northpolewonderland/santagram/Search;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void

    :cond_0
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Search;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v1

    const-string v2, "Popular Posts"

    invoke-virtual {v1, v2}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
