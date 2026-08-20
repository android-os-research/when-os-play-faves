.class public Lcom/android/server/enterprise/general/TypefaceFile;
.super Ljava/lang/Object;
.source "TypefaceFile.java"


# instance fields
.field public droidName:Ljava/lang/String;

.field public fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDroidName()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public setDroidName(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDroidname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
