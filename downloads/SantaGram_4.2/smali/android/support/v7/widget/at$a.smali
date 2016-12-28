.class Landroid/support/v7/widget/at$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/at;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/at;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/at$a;->a:Landroid/support/v7/widget/at;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/at;Landroid/support/v7/widget/at$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/at$a;-><init>(Landroid/support/v7/widget/at;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/at$a;->a:Landroid/support/v7/widget/at;

    invoke-static {v0}, Landroid/support/v7/widget/at;->a(Landroid/support/v7/widget/at;)Landroid/support/v7/widget/aj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/at$a;->a:Landroid/support/v7/widget/at;

    invoke-static {v0}, Landroid/support/v7/widget/at;->a(Landroid/support/v7/widget/at;)Landroid/support/v7/widget/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/at$c;->b()Landroid/support/v7/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/at$a;->a:Landroid/support/v7/widget/at;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/at$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/a$c;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/support/v7/widget/at;->a(Landroid/support/v7/widget/at;Landroid/support/v7/a/a$c;Z)Landroid/support/v7/widget/at$c;

    move-result-object p2

    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/support/v7/widget/at$c;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/at$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/a/a$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at$c;->a(Landroid/support/v7/a/a$c;)V

    goto :goto_0
.end method
