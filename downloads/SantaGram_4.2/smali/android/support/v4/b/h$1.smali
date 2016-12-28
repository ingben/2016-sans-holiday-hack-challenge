.class Landroid/support/v4/b/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/b/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/b/h;->a(ILandroid/support/v4/b/h$b;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/m;

.field final synthetic b:Landroid/support/v4/b/h;


# direct methods
.method constructor <init>(Landroid/support/v4/b/h;Landroid/support/v4/b/m;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/h$1;->b:Landroid/support/v4/b/h;

    iput-object p2, p0, Landroid/support/v4/b/h$1;->a:Landroid/support/v4/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/h$1;->a:Landroid/support/v4/b/m;

    invoke-virtual {v0}, Landroid/support/v4/b/m;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
