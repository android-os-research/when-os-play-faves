.class final enum Lcom/android/server/am/CrashDexOpt$CrashKind;
.super Ljava/lang/Enum;
.source "CrashDexOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CrashDexOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrashKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/CrashDexOpt$CrashKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/CrashDexOpt$CrashKind;

.field public static final enum JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

.field public static final enum NATIVE:Lcom/android/server/am/CrashDexOpt$CrashKind;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 55
    new-instance v0, Lcom/android/server/am/CrashDexOpt$CrashKind;

    const-string v1, "JAVA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/CrashDexOpt$CrashKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CrashDexOpt$CrashKind;->JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

    new-instance v1, Lcom/android/server/am/CrashDexOpt$CrashKind;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/am/CrashDexOpt$CrashKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/am/CrashDexOpt$CrashKind;->NATIVE:Lcom/android/server/am/CrashDexOpt$CrashKind;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/server/am/CrashDexOpt$CrashKind;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 54
    sput-object v3, Lcom/android/server/am/CrashDexOpt$CrashKind;->$VALUES:[Lcom/android/server/am/CrashDexOpt$CrashKind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/CrashDexOpt$CrashKind;
    .registers 2

    .line 54
    const-class v0, Lcom/android/server/am/CrashDexOpt$CrashKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/CrashDexOpt$CrashKind;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/CrashDexOpt$CrashKind;
    .registers 1

    .line 54
    sget-object v0, Lcom/android/server/am/CrashDexOpt$CrashKind;->$VALUES:[Lcom/android/server/am/CrashDexOpt$CrashKind;

    invoke-virtual {v0}, [Lcom/android/server/am/CrashDexOpt$CrashKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/CrashDexOpt$CrashKind;

    return-object v0
.end method
