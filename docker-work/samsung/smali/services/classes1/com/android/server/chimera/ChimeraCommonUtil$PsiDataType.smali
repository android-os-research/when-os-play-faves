.class public final enum Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;
.super Ljava/lang/Enum;
.source "ChimeraCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraCommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PsiDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

.field public static final enum AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

.field public static final enum TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 173
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    const-string v1, "AVG10"

    const/4 v2, 0x0

    const-string v3, "avg10"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 174
    new-instance v1, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    const-string v3, "TOTAL"

    const/4 v4, 0x1

    const-string/jumbo v5, "total"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 172
    sput-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 179
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->mPath:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;
    .registers 2

    .line 172
    const-class v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;
    .registers 1

    .line 172
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    invoke-virtual {v0}, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->mPath:Ljava/lang/String;

    return-object p0
.end method
