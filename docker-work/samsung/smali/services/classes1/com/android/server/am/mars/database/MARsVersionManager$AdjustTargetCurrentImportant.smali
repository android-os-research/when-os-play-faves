.class public Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsVersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdjustTargetCurrentImportant"
.end annotation


# instance fields
.field public importantValue:I

.field public policyNum:I

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsVersionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsVersionManager;II)V
    .registers 4

    .line 175
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->this$0:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p2, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    .line 177
    iput p3, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdjustTargetCurrentImportant: policyNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importantValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
