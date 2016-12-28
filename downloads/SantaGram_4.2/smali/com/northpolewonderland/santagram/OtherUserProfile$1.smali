.class Lcom/northpolewonderland/santagram/OtherUserProfile$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/OtherUserProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/OtherUserProfile;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/OtherUserProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/OtherUserProfile;->followButt:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unfollow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Unfollowing..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followArray:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$1$1;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    const-string v2, "Following..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/OtherUserProfile;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method
