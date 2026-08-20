.class public Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConflictInfo"
.end annotation


# instance fields
.field public final handle:J

.field public final userId:I


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-wide p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->handle:J

    .line 343
    iput p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->userId:I

    return-void
.end method
