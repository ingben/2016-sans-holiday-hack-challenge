.class public Landroid/support/v7/widget/ao$i;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/ao$v;

.field final b:Landroid/graphics/Rect;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao$i;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao$i;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ao$i;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao$i;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao$i;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao$i;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ao$i;->d:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao$i;->a:Landroid/support/v7/widget/ao$v;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao$v;->q()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao$i;->a:Landroid/support/v7/widget/ao$v;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao$v;->x()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao$i;->a:Landroid/support/v7/widget/ao$v;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao$v;->d()I

    move-result v0

    return v0
.end method
