.class public Lcom/northpolewonderland/santagram/Comments;
.super Landroid/support/v7/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/northpolewonderland/santagram/Comments$a;
    }
.end annotation


# instance fields
.field commentTxt:Landroid/widget/EditText;

.field commentsArray:Ljava/util/List;
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

.field postObj:Lcom/parse/ParseObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->currUser:Lcom/parse/ParseUser;

    return-void
.end method


# virtual methods
.method public dismisskeyboard()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Comments;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Comments;->commentTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->commentTxt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->commentTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Comments;->setContentView(I)V

    invoke-super {p0, v2}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "Comments"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->b(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "objectID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->postObj:Lcom/parse/ParseObject;

    :try_start_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Comments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->commentTxt:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->commentTxt:Landroid/widget/EditText;

    new-instance v1, Lcom/northpolewonderland/santagram/Comments$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Comments$1;-><init>(Lcom/northpolewonderland/santagram/Comments;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->queryComments()V

    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Comments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/northpolewonderland/santagram/Comments$a;

    invoke-direct {v1, p0, v0}, Lcom/northpolewonderland/santagram/Comments$a;-><init>(Lcom/northpolewonderland/santagram/Comments;Landroid/widget/ImageView;)V

    new-array v0, v2, [Ljava/lang/String;

    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/northpolewonderland/santagram/Comments;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/Comments$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Comments;->queryComments()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d00e9 -> :sswitch_1
    .end sparse-switch
.end method

.method queryComments()V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Loading comments..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_POST_POINTER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Comments;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_CREATED_AT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/Comments$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Comments$2;-><init>(Lcom/northpolewonderland/santagram/Comments;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method
