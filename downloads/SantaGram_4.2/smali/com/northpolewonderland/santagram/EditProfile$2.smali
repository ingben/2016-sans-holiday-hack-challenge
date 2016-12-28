.class Lcom/northpolewonderland/santagram/EditProfile$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/EditProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/northpolewonderland/santagram/EditProfile;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/EditProfile;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/EditProfile$2;->b:Lcom/northpolewonderland/santagram/EditProfile;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/EditProfile$2;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, [B

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/EditProfile$2;->done([BLcom/parse/ParseException;)V

    return-void
.end method

.method public done([BLcom/parse/ParseException;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/northpolewonderland/santagram/EditProfile$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
