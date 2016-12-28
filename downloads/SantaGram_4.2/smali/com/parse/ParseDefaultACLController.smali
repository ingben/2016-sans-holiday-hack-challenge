.class Lcom/parse/ParseDefaultACLController;
.super Ljava/lang/Object;


# instance fields
.field defaultACL:Lcom/parse/ParseACL;

.field defaultACLUsesCurrentUser:Z

.field defaultACLWithCurrentUser:Lcom/parse/ParseACL;

.field lastCurrentUser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/parse/ParseACL;
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACLUsesCurrentUser:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/parse/ParseDefaultACLController;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseDefaultACLController;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    invoke-virtual {v0}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parse/ParseACL;->setShared(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    iput-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseDefaultACLController;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_1
.end method

.method public set(Lcom/parse/ParseACL;Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    iput-object v0, p0, Lcom/parse/ParseDefaultACLController;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseACL;->setShared(Z)V

    iput-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    iput-boolean p2, p0, Lcom/parse/ParseDefaultACLController;->defaultACLUsesCurrentUser:Z

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_0
.end method
