.class public Lcom/ibm/icu/impl/CalendarAstronomer$1;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"

# interfaces
.implements Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/CalendarAstronomer;->getSunTime(DZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ibm/icu/impl/CalendarAstronomer;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$1;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()D
    .registers 3

    .line 663
    iget-object p0, p0, Lcom/ibm/icu/impl/CalendarAstronomer$1;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v0

    return-wide v0
.end method
