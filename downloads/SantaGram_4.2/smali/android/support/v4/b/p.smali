.class public Landroid/support/v4/b/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/q",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/b/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b/q",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    return-void
.end method

.method public static final a(Landroid/support/v4/b/q;)Landroid/support/v4/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b/q",
            "<*>;)",
            "Landroid/support/v4/b/p;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/b/p;

    invoke-direct {v0, p0}, Landroid/support/v4/b/p;-><init>(Landroid/support/v4/b/q;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/support/v4/b/m;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/s;->b(Ljava/lang/String;)Landroid/support/v4/b/m;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/support/v4/b/r;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0}, Landroid/support/v4/b/q;->i()Landroid/support/v4/b/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/b/s;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/s;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/b/m;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/b/s;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/support/v4/b/m;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    iget-object v1, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v2, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/b/s;->a(Landroid/support/v4/b/q;Landroid/support/v4/b/o;Landroid/support/v4/b/m;)V

    return-void
.end method

.method public a(Landroid/support/v4/i/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/i/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/b/x;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/q;->a(Landroid/support/v4/i/i;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/b/q;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/q;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/s;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/b/s;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/s;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/b/x;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0}, Landroid/support/v4/b/q;->j()Landroid/support/v4/b/y;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/s;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/s;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->h()V

    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->g()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/b/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->f()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->i()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->j()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->k()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->l()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->m()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->n()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->o()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->q()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->r()V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    iget-object v0, v0, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    invoke-virtual {v0}, Landroid/support/v4/b/s;->d()Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0}, Landroid/support/v4/b/q;->l()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0}, Landroid/support/v4/b/q;->m()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0}, Landroid/support/v4/b/q;->n()V

    return-void
.end method

.method public s()Landroid/support/v4/i/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/i/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/b/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/b/p;->a:Landroid/support/v4/b/q;

    invoke-virtual {v0}, Landroid/support/v4/b/q;->o()Landroid/support/v4/i/i;

    move-result-object v0

    return-object v0
.end method
