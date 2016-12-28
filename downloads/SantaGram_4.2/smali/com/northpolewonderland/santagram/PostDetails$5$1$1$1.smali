.class Lcom/northpolewonderland/santagram/PostDetails$5$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails$5$1$1;->done(Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails$5$1$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails$5$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$5$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$5$1$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$5$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$5$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$5$1;->b:Lcom/northpolewonderland/santagram/PostDetails$5;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$5;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/PostDetails;->finish()V

    return-void
.end method
