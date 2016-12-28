.class Lcom/parse/GcmRegistrar$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar;->registerAsync()La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/Boolean;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/GcmRegistrar;

.field final synthetic val$installation:Lcom/parse/ParseInstallation;


# direct methods
.method constructor <init>(Lcom/parse/GcmRegistrar;Lcom/parse/ParseInstallation;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/GcmRegistrar$1;->this$0:Lcom/parse/GcmRegistrar;

    iput-object p2, p0, Lcom/parse/GcmRegistrar$1;->val$installation:Lcom/parse/ParseInstallation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar$1;->val$installation:Lcom/parse/ParseInstallation;

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/parse/GcmRegistrar$1;->val$installation:Lcom/parse/ParseInstallation;

    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->setPushType(Lcom/parse/PushType;)V

    :cond_1
    iget-object v0, p0, Lcom/parse/GcmRegistrar$1;->this$0:Lcom/parse/GcmRegistrar;

    # invokes: Lcom/parse/GcmRegistrar;->sendRegistrationRequestAsync()La/j;
    invoke-static {v0}, Lcom/parse/GcmRegistrar;->access$000(Lcom/parse/GcmRegistrar;)La/j;

    invoke-static {v2}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/GcmRegistrar$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
