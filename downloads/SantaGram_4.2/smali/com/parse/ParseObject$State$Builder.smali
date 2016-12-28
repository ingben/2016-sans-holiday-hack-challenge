.class Lcom/parse/ParseObject$State$Builder;
.super Lcom/parse/ParseObject$State$Init;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseObject$State$Init",
        "<",
        "Lcom/parse/ParseObject$State$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/parse/ParseObject$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/ParseObject$State$Init;-><init>(Lcom/parse/ParseObject$State;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/ParseObject$State$Init;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/parse/ParseObject$State;
    .locals 1

    new-instance v0, Lcom/parse/ParseObject$State;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$State;-><init>(Lcom/parse/ParseObject$State$Init;)V

    return-object v0
.end method

.method self()Lcom/parse/ParseObject$State$Builder;
    .locals 0

    return-object p0
.end method

.method bridge synthetic self()Lcom/parse/ParseObject$State$Init;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Builder;->self()Lcom/parse/ParseObject$State$Builder;

    move-result-object v0

    return-object v0
.end method
