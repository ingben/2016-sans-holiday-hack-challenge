.class abstract Landroid/support/v7/a/h;
.super Landroid/support/v7/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/a/h$1;,
        Landroid/support/v7/a/h$b;,
        Landroid/support/v7/a/h$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field final d:Landroid/view/Window$Callback;

.field final e:Landroid/support/v7/a/f;

.field f:Landroid/support/v7/a/a;

.field g:Landroid/view/MenuInflater;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field private m:Ljava/lang/CharSequence;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/f;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/a/g;-><init>()V

    iput-object p1, p0, Landroid/support/v7/a/h;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    iput-object p3, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/a/f;

    iget-object v0, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/a/h$b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/support/v7/a/h;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/h;->d:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/a/h;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/a/a;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/h;->l()V

    iget-object v0, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/a/a;

    return-object v0
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/a/h$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/h$b;-><init>(Landroid/support/v7/a/h;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/a/h;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/support/v7/a/h;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method abstract b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/a/h;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/a/h;->l()V

    new-instance v1, Landroid/support/v7/view/g;

    iget-object v0, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/a/a;

    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/a/h;->g:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/h;->g:Landroid/view/MenuInflater;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/h;->n:Z

    return-void
.end method

.method public final g()Landroid/support/v7/a/b$a;
    .locals 2

    new-instance v0, Landroid/support/v7/a/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/a/h$a;-><init>(Landroid/support/v7/a/h;Landroid/support/v7/a/h$1;)V

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract l()V
.end method

.method final m()Landroid/support/v7/a/a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/a/a;

    return-object v0
.end method

.method final n()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/a/h;->a()Landroid/support/v7/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/a/a;->d()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final p()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/a/h;->n:Z

    return v0
.end method

.method final q()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final r()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/h;->m:Ljava/lang/CharSequence;

    goto :goto_0
.end method
