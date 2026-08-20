.class Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;
.super Ljava/lang/Object;
.source "SemLogcatLog.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/util/SemLogcatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealLogMessage"
.end annotation


# instance fields
.field private final mFormat:Ljava/lang/String;

.field private final mLogLevel:I

.field private mNextFormatCharPos:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mLogLevel:I

    .line 157
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mTag:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 160
    iput p2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    if-eqz p4, :cond_1d

    .line 162
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    return-void
.end method

.method private copyUntilPlaceholder()V
    .registers 5

    .line 227
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_b

    return-void

    .line 231
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    const/16 v1, 0x25

    iget v2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 237
    iput v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    return-void
.end method


# virtual methods
.method public c(C)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 4

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 196
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    iget p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_18
    return-object p0
.end method

.method public c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 5

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 186
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 187
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    iget p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_18
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 4

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 176
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 177
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_18
    return-object p0
.end method

.method public c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 4

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 206
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    iget p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_18
    return-object p0
.end method

.method public flush()V
    .registers 5

    .line 215
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 216
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 218
    :cond_17
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mLogLevel:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public r(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
