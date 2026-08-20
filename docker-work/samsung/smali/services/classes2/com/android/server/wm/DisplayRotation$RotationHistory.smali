.class public Lcom/android/server/wm/DisplayRotation$RotationHistory;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RotationHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x8


# instance fields
.field public final mRecords:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1990
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation$RotationHistory-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>()V

    return-void
.end method


# virtual methods
.method public addRecord(Lcom/android/server/wm/DisplayRotation;I)V
    .registers 5

    .line 1993
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_f

    .line 1994
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1996
    :cond_f
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 1997
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;-><init>(Lcom/android/server/wm/DisplayRotation;II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method
