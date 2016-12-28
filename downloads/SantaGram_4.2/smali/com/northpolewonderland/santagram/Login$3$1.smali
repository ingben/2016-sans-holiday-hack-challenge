.class Lcom/northpolewonderland/santagram/Login$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Login$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/northpolewonderland/santagram/Login$3;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Login$3;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Login$3$1;->b:Lcom/northpolewonderland/santagram/Login$3;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/Login$3$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login$3$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/northpolewonderland/santagram/Login$3$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Login$3$1$1;-><init>(Lcom/northpolewonderland/santagram/Login$3$1;)V

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V

    return-void
.end method
