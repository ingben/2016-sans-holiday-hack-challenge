.class Landroid/support/design/widget/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/i;

.field private final b:Landroid/support/design/widget/CoordinatorLayout;

.field private final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/design/widget/i;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/design/widget/i$a;->a:Landroid/support/design/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/design/widget/i$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Landroid/support/design/widget/i$a;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/i$a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/i$a;->a:Landroid/support/design/widget/i;

    invoke-static {v0}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/i;)Landroid/support/v4/widget/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/i$a;->a:Landroid/support/design/widget/i;

    invoke-static {v0}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/i;)Landroid/support/v4/widget/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/u;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/i$a;->a:Landroid/support/design/widget/i;

    iget-object v1, p0, Landroid/support/design/widget/i$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/i$a;->c:Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/widget/i$a;->a:Landroid/support/design/widget/i;

    invoke-static {v3}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/i;)Landroid/support/v4/widget/u;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/u;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/i;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    iget-object v0, p0, Landroid/support/design/widget/i$a;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/j/af;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/i$a;->a:Landroid/support/design/widget/i;

    iget-object v1, p0, Landroid/support/design/widget/i$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/i$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_0
.end method
