.class public Landroid/support/v7/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/a/c$a;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/a/d;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/a/c$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/a/d;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/a/c$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput p2, p0, Landroid/support/v7/a/d$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v0, v0, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Landroid/support/v7/a/d$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/a/c$a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->g:Landroid/view/View;

    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->t:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->i:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(I)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput p1, v0, Landroid/support/v7/a/c$a;->c:I

    return-object p0
.end method

.method public b(Landroid/view/View;)Landroid/support/v7/a/d$a;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->w:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput v1, v0, Landroid/support/v7/a/c$a;->v:I

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-boolean v1, v0, Landroid/support/v7/a/c$a;->B:Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->k:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b()Landroid/support/v7/a/d;
    .locals 4

    new-instance v0, Landroid/support/v7/a/d;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/a/d$a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/a/d;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    invoke-static {v0}, Landroid/support/v7/a/d;->a(Landroid/support/v7/a/d;)Landroid/support/v7/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/a/c$a;->a(Landroid/support/v7/a/c;)V

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-boolean v1, v1, Landroid/support/v7/a/c$a;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setCancelable(Z)V

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-boolean v1, v1, Landroid/support/v7/a/c$a;->o:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public c()Landroid/support/v7/a/d;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    return-object v0
.end method
