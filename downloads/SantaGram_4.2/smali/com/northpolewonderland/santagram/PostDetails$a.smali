.class Lcom/northpolewonderland/santagram/PostDetails$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/northpolewonderland/santagram/PostDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/northpolewonderland/santagram/PostDetails;


# direct methods
.method public constructor <init>(Lcom/northpolewonderland/santagram/PostDetails;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$a;->b:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/northpolewonderland/santagram/PostDetails$a;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$a;->b:Lcom/northpolewonderland/santagram/PostDetails;

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Lcom/northpolewonderland/santagram/PostDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadImageTask error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/northpolewonderland/santagram/PostDetails$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/northpolewonderland/santagram/PostDetails$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
