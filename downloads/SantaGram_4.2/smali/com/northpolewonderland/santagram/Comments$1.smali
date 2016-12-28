.class Lcom/northpolewonderland/santagram/Comments$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Comments;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Comments;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Comments;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Sending comment..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_COMMENT:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/Comments;->commentTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_POST_POINTER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/Comments;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_USER_POINTER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/Comments;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/northpolewonderland/santagram/Comments$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Comments$1$1;-><init>(Lcom/northpolewonderland/santagram/Comments$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
