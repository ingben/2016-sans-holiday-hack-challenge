.class Lcom/northpolewonderland/santagram/Me$3$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me$3$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/parse/ParseObject;

.field final synthetic b:Lcom/northpolewonderland/santagram/Me$3$2;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me$3$2;Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$3$2$1;->b:Lcom/northpolewonderland/santagram/Me$3$2;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/Me$3$2$1;->a:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2$1;->b:Lcom/northpolewonderland/santagram/Me$3$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    const-string v1, "Deleting post..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2$1;->b:Lcom/northpolewonderland/santagram/Me$3$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->LIKES_POST_LIKED:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me$3$2$1;->a:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$3$2$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$3$2$1$1;-><init>(Lcom/northpolewonderland/santagram/Me$3$2$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method
