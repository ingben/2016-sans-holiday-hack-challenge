.class Landroid/support/v7/widget/at$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/at;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/at;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/at$b;->a:Landroid/support/v7/widget/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/at;Landroid/support/v7/widget/at$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/at$b;-><init>(Landroid/support/v7/widget/at;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/at$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$c;->b()Landroid/support/v7/a/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/a$c;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/at$b;->a:Landroid/support/v7/widget/at;

    invoke-static {v0}, Landroid/support/v7/widget/at;->a(Landroid/support/v7/widget/at;)Landroid/support/v7/widget/aj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/at$b;->a:Landroid/support/v7/widget/at;

    invoke-static {v0}, Landroid/support/v7/widget/at;->a(Landroid/support/v7/widget/at;)Landroid/support/v7/widget/aj;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method
