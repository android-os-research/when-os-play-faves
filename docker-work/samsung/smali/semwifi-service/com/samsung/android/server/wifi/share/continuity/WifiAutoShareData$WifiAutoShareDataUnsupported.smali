.class public Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$WifiAutoShareDataUnsupported;
.super Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
.source "WifiAutoShareData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiAutoShareDataUnsupported"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
