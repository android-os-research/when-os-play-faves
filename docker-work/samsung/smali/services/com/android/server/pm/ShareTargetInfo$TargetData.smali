.class public Lcom/android/server/pm/ShareTargetInfo$TargetData;
.super Ljava/lang/Object;
.source "ShareTargetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShareTargetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetData"
.end annotation


# instance fields
.field public final mHost:Ljava/lang/String;

.field public final mMimeType:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mPathPattern:Ljava/lang/String;

.field public final mPathPrefix:Ljava/lang/String;

.field public final mPort:Ljava/lang/String;

.field public final mScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mScheme:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mHost:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPort:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPath:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPattern:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPrefix:Ljava/lang/String;

    .line 66
    iput-object p7, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShareTargetInfo$TargetData;->toStringInner(Ljava/lang/StringBuilder;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringInner(Ljava/lang/StringBuilder;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mScheme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, " scheme="

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, " host="

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, " port="

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_36
    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, " path="

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_48
    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, " pathPattern="

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_5a
    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, " pathPrefix="

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_6c
    iget-object v0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, " mimeType="

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7e
    return-void
.end method
