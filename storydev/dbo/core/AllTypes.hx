package storydev.dbo.core;

class AllTypes {}

#if cs
typedef U8 = cs.UInt8;
typedef S8 = cs.Int8;
typedef S16 = cs.Int16;
typedef U16 = cs.UInt16;
typedef S32 = Int;
typedef U32 = UInt;
typedef S64 = cs.Int64;
typedef U64 = cs.UInt64;
typedef F32 = Float;
typedef F64 = cs.system.Double;
typedef F128 = cs.system.Decimal;
typedef DBString = cs.system.String;
typedef DateTime = cs.system.DateTime;
#elseif java
typedef U8 = java.Int8;
typedef S8 = java.Int8;
typedef U16 = java.Int16;
typedef S16 = java.Int16;
typedef U32 = UInt;
typedef S32 = Int;
typedef U64 = java.Int64;
typedef S64 = java.Int64;
typedef F32 = java.lang.Float;
typedef F64 = java.lang.Double;
typedef F128 = java.math.BigDecimal;
typedef DBString = java.NativeString;
typedef DateTime = java.time.LocalDateTime;
#elseif cpp
typedef U8 = cpp.UInt8;
typedef S8 = cpp.Int8;
typedef U16 = cpp.UInt16;
typedef S16 = cpp.Int16;
typedef U32 = cpp.UInt32;
typedef S32 = cpp.Int32;
typedef U64 = cpp.UInt64;
typedef S64 = cpp.Int64;
typedef F32 = cpp.Float32;
typedef F64 = cpp.Float64;
typedef F128 = cpp.Float64;
typedef DBString = String;
typedef DateTime = Date;
#else
typedef U8 = UInt;
typedef S8 = Int;
typedef U16 = UInt;
typedef S16 = Int;
typedef U32 = UInt;
typedef S32 = Int;
typedef U64 = UInt;
typedef S64 = Int;
typedef F32 = Float;
typedef F64 = Float;
typedef F128 = Float;
typedef DBString = String;
typedef DateTime = Date;
#end