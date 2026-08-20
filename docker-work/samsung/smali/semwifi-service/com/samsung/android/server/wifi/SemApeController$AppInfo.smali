.class Lcom/samsung/android/server/wifi/SemApeController$AppInfo;
.super Ljava/lang/Object;
.source "SemApeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    .line 110
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 111
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method equals(II)Z
    .registers 4

    .line 115
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    if-ne v0, p1, :cond_a

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    if-ne p0, p2, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
