.class public Lcom/android/server/appop/AppOpsService$NoteOpTrace;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteOpTrace"
.end annotation


# static fields
.field public static final OP:Ljava/lang/String; = "op"

.field public static final PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final STACKTRACE:Ljava/lang/String; = "stackTrace"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field public final mOp:I

.field public final mPackageName:Ljava/lang/String;

.field public final mStackTrace:Ljava/lang/String;

.field public final mVersion:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    .line 7783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7784
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    .line 7785
    iput p2, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    .line 7786
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    .line 7787
    iput-wide p4, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$NoteOpTrace;
    .registers 8

    .line 7772
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7773
    new-instance p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    const-string/jumbo v1, "stackTrace"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "op"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "packageName"

    .line 7774
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;-><init>(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    const-string v0, "AppOps"

    const-string v1, "Error constructing NoteOpTrace object JSON trace format incorrect"

    .line 7777
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public asJson()Ljava/lang/String;
    .registers 6

    .line 7812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"stackTrace\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "\\n"

    .line 7813
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "op"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\":\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 7793
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 7794
    :cond_12
    check-cast p1, Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    .line 7795
    iget v2, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    iget v3, p1, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    if-ne v2, v3, :cond_37

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    iget-wide v4, p1, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    .line 7797
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    .line 7798
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 7803
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
