.class public Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;
.super Ljava/lang/Object;
.source "ChimeraCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraCommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsiFile"
.end annotation


# instance fields
.field public mFullAvg10:D

.field public mIsEmptyFile:Z

.field public mPsiFullTotal:J

.field public mPsiSomeTotal:J

.field public mSomeAvg10:D


# direct methods
.method public static synthetic $r8$lambda$C8kYBAOlI2TgCvmw3dDETV9y00U(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->lambda$new$0(Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;)V
    .registers 4

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1f

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1f

    :cond_c
    const-string v0, "\n"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mIsEmptyFile:Z

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "some"

    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const-string/jumbo v2, "total"

    const/4 v3, 0x1

    const-string v4, "avg10"

    if-eqz v0, :cond_2e

    .line 220
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_1f

    .line 221
    invoke-virtual {p0, p2, v4, v3}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mSomeAvg10:D

    goto :goto_53

    .line 222
    :cond_1f
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_53

    .line 223
    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    goto :goto_53

    :cond_2e
    const-string v0, "full"

    .line 225
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 226
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_45

    .line 227
    invoke-virtual {p0, p2, v4, v3}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mFullAvg10:D

    goto :goto_53

    .line 228
    :cond_45
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_53

    .line 229
    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public getFullAvg10()D
    .registers 3

    .line 247
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mFullAvg10:D

    return-wide v0
.end method

.method public final getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const-string p0, " "

    .line 237
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    array-length p2, p0

    if-le p2, p3, :cond_2b

    aget-object p2, p0, p3

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    aget-object p0, p0, p3

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2d

    :cond_2b
    const-string p0, "0"

    :goto_2d
    return-object p0
.end method

.method public getPsiFullTotal()J
    .registers 3

    .line 255
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    return-wide v0
.end method

.method public getPsiSomeTotal()J
    .registers 3

    .line 251
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    return-wide v0
.end method

.method public getSomeAvg10()D
    .registers 3

    .line 243
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mSomeAvg10:D

    return-wide v0
.end method

.method public isEmpty()Z
    .registers 1

    .line 259
    iget-boolean p0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mIsEmptyFile:Z

    return p0
.end method
