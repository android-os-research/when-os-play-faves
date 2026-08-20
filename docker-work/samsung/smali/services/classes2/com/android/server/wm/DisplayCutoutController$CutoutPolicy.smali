.class public interface abstract annotation Lcom/android/server/wm/DisplayCutoutController$CutoutPolicy;
.super Ljava/lang/Object;
.source "DisplayCutoutController.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayCutoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CutoutPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final NOT_OVERLAP:I = 0x2

.field public static final OVERLAP:I = 0x1
