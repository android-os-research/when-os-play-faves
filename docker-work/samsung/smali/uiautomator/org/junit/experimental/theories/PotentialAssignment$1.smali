.class Lorg/junit/experimental/theories/PotentialAssignment$1;
.super Lorg/junit/experimental/theories/PotentialAssignment;
.source "PotentialAssignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/theories/PotentialAssignment;->forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 18
    iput-object p1, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    iput-object p2, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lorg/junit/experimental/theories/PotentialAssignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 7

    .line 33
    iget-object v0, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_a

    .line 34
    const-string v0, "null"

    .local v0, "valueString":Ljava/lang/String;
    goto :goto_2f

    .line 37
    .end local v0    # "valueString":Ljava/lang/String;
    :cond_a
    :try_start_a
    const-string v4, "\"%s\""

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    .line 41
    .restart local v0    # "valueString":Ljava/lang/String;
    goto :goto_2f

    .line 38
    .end local v0    # "valueString":Ljava/lang/String;
    :catchall_15
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    new-array v4, v1, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 39
    const-string v5, "[toString() threw %s: %s]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 44
    .local v0, "valueString":Ljava/lang/String;
    :goto_2f
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    iget-object v2, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "%s <from %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 21
    iget-object v0, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
