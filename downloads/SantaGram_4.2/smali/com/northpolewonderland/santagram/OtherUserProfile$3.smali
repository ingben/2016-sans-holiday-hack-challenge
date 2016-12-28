.class Lcom/northpolewonderland/santagram/OtherUserProfile$3;
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

    iput-object p1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$3;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$3;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    const-class v2, Lcom/northpolewonderland/santagram/Follow;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "objectID"

    iget-object v3, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$3;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "follow"

    const-string v3, "Followers"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$3;->a:Lcom/northpolewonderland/santagram/OtherUserProfile;

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
