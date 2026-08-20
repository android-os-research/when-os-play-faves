.class public interface abstract annotation Lcom/android/server/wm/BoundsCompatRecord$ClearReason;
.super Ljava/lang/Object;
.source "BoundsCompatRecord.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ClearReason"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final IN_ACTIVITY_EMBEDDED:I = 0x1

.field public static final IN_MULTI_WINDOW_MODE:I = 0x2

.field public static final IN_NON_DEFAULT_DISPLAY:I = 0x3
