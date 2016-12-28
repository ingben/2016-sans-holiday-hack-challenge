.class Lcom/northpolewonderland/santagram/SignUp$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/SignUp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/SignUp;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/SignUp;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/SignUp$2;->a:Lcom/northpolewonderland/santagram/SignUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp$2;->a:Lcom/northpolewonderland/santagram/SignUp;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/SignUp$2;->a:Lcom/northpolewonderland/santagram/SignUp;

    const-class v3, Lcom/northpolewonderland/santagram/TermsOfUse;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/SignUp;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
