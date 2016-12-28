.class Lcom/northpolewonderland/santagram/PostDetails$7$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails$7;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/northpolewonderland/santagram/PostDetails$7;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails$7;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$7$4;->b:Lcom/northpolewonderland/santagram/PostDetails$7;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/PostDetails$7$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$7$4;->b:Lcom/northpolewonderland/santagram/PostDetails$7;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/PostDetails;->showPreviewLayout()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$7$4;->b:Lcom/northpolewonderland/santagram/PostDetails$7;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    const v1, 0x7f0d00d3

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$7$4;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
