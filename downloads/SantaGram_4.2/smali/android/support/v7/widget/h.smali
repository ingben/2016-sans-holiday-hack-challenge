.class Landroid/support/v7/widget/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/m;

.field private c:Landroid/support/v7/widget/az;

.field private d:Landroid/support/v7/widget/az;

.field private e:Landroid/support/v7/widget/az;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/v7/widget/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/m;

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/h;->e:Landroid/support/v7/widget/az;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v7/widget/az;

    invoke-direct {v1}, Landroid/support/v7/widget/az;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/h;->e:Landroid/support/v7/widget/az;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/h;->e:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->a()V

    iget-object v2, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/j/af;->x(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-boolean v0, v1, Landroid/support/v7/widget/az;->d:Z

    iput-object v2, v1, Landroid/support/v7/widget/az;->a:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/j/af;->y(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-boolean v0, v1, Landroid/support/v7/widget/az;->c:Z

    iput-object v2, v1, Landroid/support/v7/widget/az;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v2, v1, Landroid/support/v7/widget/az;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/widget/az;->c:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/support/v7/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/az;[I)V

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    iget-object v0, v0, Landroid/support/v7/widget/az;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/m;

    iget-object v1, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/m;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/h;->b(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/az;

    invoke-direct {v0}, Landroid/support/v7/widget/az;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    iput-object p1, v0, Landroid/support/v7/widget/az;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/az;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/h;->c()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/az;

    invoke-direct {v0}, Landroid/support/v7/widget/az;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    iput-object p1, v0, Landroid/support/v7/widget/az;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/az;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/h;->c()V

    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/h;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/b/a$k;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Landroid/support/v7/b/a$k;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/m;

    iget-object v2, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/v7/b/a$k;->ViewBackgroundHelper_android_background:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/m;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/h;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget v0, Landroid/support/v7/b/a$k;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/b/a$k;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/j/af;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v0, Landroid/support/v7/b/a$k;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/b/a$k;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/ag;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/j/af;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    iget-object v0, v0, Landroid/support/v7/widget/az;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/az;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/az;

    invoke-direct {v0}, Landroid/support/v7/widget/az;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/az;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/az;

    iput-object p1, v0, Landroid/support/v7/widget/az;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/az;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/az;->d:Z

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/h;->c()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/az;

    goto :goto_0
.end method

.method c()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/h;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/az;

    iget-object v2, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/az;[I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/az;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/az;

    iget-object v2, p0, Landroid/support/v7/widget/h;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/az;[I)V

    goto :goto_0
.end method
