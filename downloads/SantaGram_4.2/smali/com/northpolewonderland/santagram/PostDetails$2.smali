.class Lcom/northpolewonderland/santagram/PostDetails$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;

    move-result-object v1

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails;->followButt:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unfollow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Unfollowing..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->followArray:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$2$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$2$1;-><init>(Lcom/northpolewonderland/santagram/PostDetails$2;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    const-string v3, "Following..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    iget-object v3, p0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/PostDetails;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/northpolewonderland/santagram/PostDetails$2$2;

    invoke-direct {v2, p0, v1}, Lcom/northpolewonderland/santagram/PostDetails$2$2;-><init>(Lcom/northpolewonderland/santagram/PostDetails$2;Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method
