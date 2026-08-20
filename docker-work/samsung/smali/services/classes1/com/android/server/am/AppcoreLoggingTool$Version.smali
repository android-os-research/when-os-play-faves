.class public final enum Lcom/android/server/am/AppcoreLoggingTool$Version;
.super Ljava/lang/Enum;
.source "AppcoreLoggingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppcoreLoggingTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/AppcoreLoggingTool$Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/AppcoreLoggingTool$Version;

.field public static final enum S:Lcom/android/server/am/AppcoreLoggingTool$Version;

.field public static final enum T:Lcom/android/server/am/AppcoreLoggingTool$Version;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 56
    new-instance v0, Lcom/android/server/am/AppcoreLoggingTool$Version;

    const-string v1, "S"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/AppcoreLoggingTool$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/AppcoreLoggingTool$Version;->S:Lcom/android/server/am/AppcoreLoggingTool$Version;

    new-instance v1, Lcom/android/server/am/AppcoreLoggingTool$Version;

    const-string v3, "T"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/am/AppcoreLoggingTool$Version;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/am/AppcoreLoggingTool$Version;->T:Lcom/android/server/am/AppcoreLoggingTool$Version;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/server/am/AppcoreLoggingTool$Version;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 55
    sput-object v3, Lcom/android/server/am/AppcoreLoggingTool$Version;->$VALUES:[Lcom/android/server/am/AppcoreLoggingTool$Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/AppcoreLoggingTool$Version;
    .registers 2

    .line 55
    const-class v0, Lcom/android/server/am/AppcoreLoggingTool$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppcoreLoggingTool$Version;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/AppcoreLoggingTool$Version;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/server/am/AppcoreLoggingTool$Version;->$VALUES:[Lcom/android/server/am/AppcoreLoggingTool$Version;

    invoke-virtual {v0}, [Lcom/android/server/am/AppcoreLoggingTool$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/AppcoreLoggingTool$Version;

    return-object v0
.end method
