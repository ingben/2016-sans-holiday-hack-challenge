.class Lcom/northpolewonderland/santagram/EditProfile$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/EditProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/EditProfile;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/EditProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/EditProfile$5;->a:Lcom/northpolewonderland/santagram/EditProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$5;->a:Lcom/northpolewonderland/santagram/EditProfile;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/northpolewonderland/santagram/EditProfile;->d:Z

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$5;->a:Lcom/northpolewonderland/santagram/EditProfile;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/EditProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Only elves can upload images"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
