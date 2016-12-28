.class Lcom/parse/PushHistory$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/parse/PushHistory$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public pushId:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/PushHistory$Entry;->pushId:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/parse/PushHistory$Entry;)I
    .locals 2

    iget-object v0, p0, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    iget-object v1, p1, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/parse/PushHistory$Entry;

    invoke-virtual {p0, p1}, Lcom/parse/PushHistory$Entry;->compareTo(Lcom/parse/PushHistory$Entry;)I

    move-result v0

    return v0
.end method
