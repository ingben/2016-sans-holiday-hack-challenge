.class public abstract Landroid/support/v7/widget/ao$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ao;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/ao$s;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ao$g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ao;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;ILandroid/support/v7/widget/ao;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/ao$s;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao$i;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v7/widget/ao$g;->a(Landroid/graphics/Rect;ILandroid/support/v7/widget/ao;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ao;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ao;Landroid/support/v7/widget/ao$s;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ao$g;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ao;)V

    return-void
.end method
