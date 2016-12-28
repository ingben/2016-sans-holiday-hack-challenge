.class Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/OtherUserProfile$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/OtherUserProfile$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followButt:Landroid/widget/Button;

    const-string v1, "unfollow"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->followButt:Landroid/widget/Button;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/OtherUserProfile;->currUser:Lcom/parse/ParseUser;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " started following you"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CURRENT_USER:Ljava/lang/String;

    iget-object v3, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_OTHER_USER:Ljava/lang/String;

    iget-object v3, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/OtherUserProfile;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/parse/ParseObject;->saveInBackground()La/j;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/northpolewonderland/santagram/OtherUserProfile$1$2;->done(Lcom/parse/ParseException;)V

    return-void
.end method
