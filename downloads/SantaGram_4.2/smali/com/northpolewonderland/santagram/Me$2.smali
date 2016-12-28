.class Lcom/northpolewonderland/santagram/Me$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Me;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$2;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, [B

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Me$2;->done([BLcom/parse/ParseException;)V

    return-void
.end method

.method public done([BLcom/parse/ParseException;)V
    .locals 2

    const/16 v1, 0x3c

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$2;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/Me;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, v1, v1}, Lcom/northpolewonderland/santagram/b;->a([BLandroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$2;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Me;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
